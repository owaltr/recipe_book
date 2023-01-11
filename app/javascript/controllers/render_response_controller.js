import { Controller } from "@hotwired/stimulus"
import { get } from "@rails/request.js"

// Connects to data-controller="render-response"
export default class extends Controller {
    connect() {
    }

    async getIngredientPartial () {
        const response = await get("/recipes/ingredient_field");

        if (response.ok) {
            const body = await response.html;
            const ingredientsSection = document.querySelector("#ingredients");
            const templateElement = document.createElement("template");
            templateElement.innerHTML = body;

            ingredientsSection.appendChild(templateElement.content.firstElementChild);
        }
    }
}